.class public Lim/doit/pro/model/Evernote;
.super Ljava/lang/Object;
.source "Evernote.java"


# instance fields
.field private noteStoreUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "note_store_url"
    .end annotation
.end field

.field private serviceHost:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_host"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "edam_userid"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private webApiUrlPrefix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web_api_url_prefix"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lim/doit/pro/model/Evernote;->noteStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/model/Evernote;->serviceHost:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/model/Evernote;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lim/doit/pro/model/Evernote;->userId:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/model/Evernote;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/model/Evernote;->webApiUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public setNoteStoreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lim/doit/pro/model/Evernote;->noteStoreUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setServiceHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceHost"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lim/doit/pro/model/Evernote;->serviceHost:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lim/doit/pro/model/Evernote;->token:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 55
    iput p1, p0, Lim/doit/pro/model/Evernote;->userId:I

    .line 56
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/model/Evernote;->username:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setWebApiUrlPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "webApiUrlPrefix"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lim/doit/pro/model/Evernote;->webApiUrlPrefix:Ljava/lang/String;

    .line 72
    return-void
.end method
