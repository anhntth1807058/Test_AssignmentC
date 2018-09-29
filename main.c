#include <stdio.h>
#include <stdlib.h>
#include<string.h>

typedef struct {
    char MSV[10], Name[50], Phone[15];
} SinhVien;

void nhapdulieuSV(SinhVien SV[], int n) {
    printf("\n----------------------------------------------------------------------------------------\n");
    for (int i = 0; i < n; ++i) {
        printf("Nhập Mã Sinh Viên thứ %d: \n", i + 1);
        fgetc(stdin);
        while (1 == 1) {
            scanf("%s^\n", SV[n].MSV);
            if (strlen(SV[n].MSV) != 5) {
                printf("Mã Sinh Viên không đúng 5 kí tự.\n");
                printf("Nhập lại Mã Sinh Viên thứ %d: ", i + 1);
            } else {
                break;
            }
        }
        printf("Nhập Tên Sinh Viên thứ %d: \n", i + 1);
        fgetc(stdin);
        scanf("%[^\t\n]", SV[n].Name);

        printf("Nhập Số Điện Thoại Sinh Viên thứ %d: \n", i + 1);
        fgetc(stdin);
        scanf("%[^\n]", SV[n].Phone);
        if (n == 10) {
            printf("Danh sách đầy. Quay lại menu.\n");
        }
    }
}

void xuatdulieuSV(SinhVien SV[], int n) {
    printf("\n----------------------------------------------------------------------------------------\n");
    printf("%-10s%-20s%-10s%-20s%-10s%-20s\n", "", "Mã sinh viên", "|", "Tên sinh viên", "|", "Số Điện thoại");
    for (int i = 0; i < n; ++i) {
        printf("%-10s%-20s%-10s%-20s%-10s%-20s\n", "", SV[n].MSV, "|", SV[n].Name, "|", SV[n].Phone);
    }

}

void luudanhsach(SinhVien SV[], int n) {
    FILE *fp = fopen("danhsachsinhvien.txt", "w+");
    printf("Danh sách đã được lưu ra file.\n");
    for (int i = 0; i < n; ++i) {
        fprintf(fp, SV[n].MSV);
        fprintf(fp, "      |     ");
        fprintf(fp, SV[n].Name);
        fprintf(fp, "      |     ");
        fprintf(fp, SV[n].Phone);
        fprintf(fp, "\n");
    }
    fclose(fp);
}

void docdanhsachSV(SinhVien SV[], int n) {
    FILE *fp = fopen("danhsachsinhvien.txt", "r");
    int bufferSize = 255;
    char buffer[bufferSize];
    while (fgets(buffer, bufferSize, fp) != NULL) {
        printf("%s", buffer);
    }
}

int main() {
    int n;
    SinhVien SV[100];
    int choice;
//    n=x;
    while (1 == 1) {
        printf("1. Thêm mới sinh viên.\n");
        printf("2. Hiển thị danh sách sinh viên.\n");
        printf("3. Lưu danh sách sinh viên ra file.\n");
        printf("4. Đọc danh sách sinh viên từ file.\n");
        printf("5. Thoát chương trình.\n");
        printf("Vui lòng nhập lựa chọn của bạn(1-5): \n");
        scanf("%d", &choice);
        if (choice == 1) {
            printf("Nhập số sinh viên muốn thêm vào: \n");
            scanf("%d", &n);
            nhapdulieuSV(SV, n);
        } else if (choice == 2) {
            xuatdulieuSV(SV, n);
        } else if (choice == 3) {
            luudanhsach(SV, n);
        } else if (choice == 4) {
            docdanhsachSV(SV, n);
        } else if (choice == 5) {
            printf("Hẹn Gặp Lại Sau");
            break;
        } else if (choice >= 1 || choice <= 5) {
            printf("Lựa chọn của bạn sai. Vui lòng nhập từ 1-5.\n");
        }

    }
    getchar();
    return 0;
}