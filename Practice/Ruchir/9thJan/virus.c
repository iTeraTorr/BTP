#include <stdlib.h>
#include <stdio.h>
#include <string.h>

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
int main()
{
    char *content = "to be written";
    replicateVirus(content);

    // TODO return value of fread

    return 0;
}