.class Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;
.super Ljava/lang/Object;
.source "BootstrapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/BootstrapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BootstrapInfoWrapper"
.end annotation


# instance fields
.field private mBootstrapInfo:Lcom/evernote/edam/userstore/BootstrapInfo;

.field private mServerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/evernote/edam/userstore/BootstrapInfo;)V
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/evernote/edam/userstore/BootstrapInfo;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;->mServerUrl:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;->mBootstrapInfo:Lcom/evernote/edam/userstore/BootstrapInfo;

    .line 217
    return-void
.end method


# virtual methods
.method getBootstrapInfo()Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;->mBootstrapInfo:Lcom/evernote/edam/userstore/BootstrapInfo;

    return-object v0
.end method

.method getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method
