.class Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook$1;
.super Ljava/lang/Object;
.source "SelectEvernoteNotebookDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    new-instance v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-direct {v0, v1, v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "notebook":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook$1;->createFromParcel(Landroid/os/Parcel;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 121
    new-array v0, p1, [Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook$1;->newArray(I)[Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    move-result-object v0

    return-object v0
.end method
