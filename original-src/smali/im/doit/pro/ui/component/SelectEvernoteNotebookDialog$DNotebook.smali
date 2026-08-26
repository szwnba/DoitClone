.class Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
.super Ljava/lang/Object;
.source "SelectEvernoteNotebookDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DNotebook"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook$1;

    invoke-direct {v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook$1;-><init>()V

    sput-object v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->id:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->name:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
