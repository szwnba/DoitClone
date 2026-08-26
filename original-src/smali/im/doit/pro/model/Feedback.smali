.class public Lim/doit/pro/model/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xd984d1a2cb89da1L


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private platform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "open"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->status:Ljava/lang/String;

    .line 35
    const-string v1, "android"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->platform:Ljava/lang/String;

    .line 36
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "cn"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    .line 50
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->version:Ljava/lang/String;

    .line 51
    return-void

    .line 39
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isTw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "tw"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    const-string v1, "cn"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    const-string v1, "ja"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_3
    const-string v1, "en"

    iput-object v1, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lim/doit/pro/model/Feedback;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->content:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->language:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->platform:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->status:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->title:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->type:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lim/doit/pro/model/Feedback;->version:Ljava/lang/String;

    .line 107
    return-void
.end method
