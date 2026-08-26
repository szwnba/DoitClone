.class Lcom/evernote/client/android/EvernoteSession$EvernoteService$1;
.super Ljava/lang/Object;
.source "EvernoteSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteSession$EvernoteService;
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
        "Lcom/evernote/client/android/EvernoteSession$EvernoteService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->values()[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService$1;->createFromParcel(Landroid/os/Parcel;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 121
    new-array v0, p1, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService$1;->newArray(I)[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v0

    return-object v0
.end method
