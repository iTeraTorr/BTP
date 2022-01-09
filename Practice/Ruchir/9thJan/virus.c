#include <stdlib.h>
#include <stdio.h>
#include <string.h>
const char *fileSearch()
{
    char *fileName = "victim.txt";
    return fileName;
}

void replicateVirus()
{
}
int main()
{
    char *content = "to be written";
    long contentSize = strlen(content) + 1;

    FILE *fp = fopen(fileSearch(), "r+");
    fseek(fp, 0, SEEK_END);
    long fileSize = ftell(fp);
    fseek(fp, 0, SEEK_SET);

    char *victimContent = malloc(fileSize + 1);
    char copyContent[contentSize + fileSize + 1];

    strcpy(copyContent, content);
    fread(victimContent, fileSize, 1, fp);
    strcat(copyContent, victimContent);

    copyContent[contentSize + fileSize] = 0;

    fseek(fp, 0, SEEK_SET);
    fprintf(fp, "%s", copyContent);

    fclose(fp);
    free(victimContent);

    // TODO return value of malloc and fread

    return 0;
}