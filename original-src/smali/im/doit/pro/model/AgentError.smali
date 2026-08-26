.class public Lim/doit/pro/model/AgentError;
.super Lim/doit/pro/model/BaseEntity;
.source "AgentError.java"


# static fields
.field private static final EXCEPTION_TIME:Ljava/lang/String; = "exceptionTime : "

.field private static final serialVersionUID:J = -0x7e6cd27010af268cL


# instance fields
.field private agent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private agentLang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agent_lang"
    .end annotation
.end field

.field private agentSys:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agent_sys"
    .end annotation
.end field

.field private agentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agent_type"
    .end annotation
.end field

.field private exception:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private notes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private resId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resid"
    .end annotation
.end field

.field private resType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restype"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userid"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method

.method public static buildError()Lim/doit/pro/model/AgentError;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lim/doit/pro/model/AgentError;

    invoke-direct {v0}, Lim/doit/pro/model/AgentError;-><init>()V

    .line 151
    .local v0, "error":Lim/doit/pro/model/AgentError;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->uuid:Ljava/lang/String;

    .line 152
    invoke-static {}, Lim/doit/pro/model/AgentError;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->userId:Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agent:Ljava/lang/String;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (build "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agentSys:Ljava/lang/String;

    .line 155
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agentType:Ljava/lang/String;

    .line 156
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agentLang:Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exceptionTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->notes:Ljava/lang/String;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->version:Ljava/lang/String;

    .line 159
    return-object v0
.end method

.method public static buildError(Ljava/lang/Throwable;)Lim/doit/pro/model/AgentError;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    invoke-static {}, Lim/doit/pro/model/AgentError;->buildError()Lim/doit/pro/model/AgentError;

    move-result-object v1

    .line 134
    .local v1, "error":Lim/doit/pro/model/AgentError;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 135
    .local v2, "info":Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 136
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 139
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lim/doit/pro/model/AgentError;->exception:Ljava/lang/String;

    .line 144
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 146
    return-object v1

    .line 140
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildPurchaseError(Ljava/lang/String;)Lim/doit/pro/model/AgentError;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Lim/doit/pro/model/AgentError;

    invoke-direct {v0}, Lim/doit/pro/model/AgentError;-><init>()V

    .line 164
    .local v0, "error":Lim/doit/pro/model/AgentError;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->uuid:Ljava/lang/String;

    .line 165
    invoke-static {}, Lim/doit/pro/model/AgentError;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->userId:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agent:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (build "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agentSys:Ljava/lang/String;

    .line 168
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agentType:Ljava/lang/String;

    .line 169
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->agentLang:Ljava/lang/String;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exceptionTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MESSAGE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->notes:Ljava/lang/String;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/AgentError;->version:Ljava/lang/String;

    .line 172
    return-object v0
.end method

.method private static getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->agentLang:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentSys()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->agentSys:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->agentType:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->resId:Ljava/lang/String;

    return-object v0
.end method

.method public getResType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->resType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lim/doit/pro/model/AgentError;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->agent:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setAgentLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentLang"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->agentLang:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAgentSys(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentSys"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->agentSys:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setAgentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentType"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->agentType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setException(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->exception:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->notes:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setResId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->resId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setResType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resType"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->resType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->userId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lim/doit/pro/model/AgentError;->version:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AgentError [userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->resId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->resType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->agent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agentSys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->agentSys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string v1, ", agentLang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->agentLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->agentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/AgentError;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
