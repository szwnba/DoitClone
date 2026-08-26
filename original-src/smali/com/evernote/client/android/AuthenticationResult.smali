.class public Lcom/evernote/client/android/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AuthenticationResult"


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mBusinessAuthToken:Ljava/lang/String;

.field private mBusinessAuthTokenExpiration:J

.field private mBusinessNoteStoreUrl:Ljava/lang/String;

.field private mBusinessUser:Lcom/evernote/edam/type/User;

.field private mEvernoteHost:Ljava/lang/String;

.field private mIsAppLinkedNotebook:Z

.field private mNoteStoreUrl:Ljava/lang/String;

.field private mUserId:I

.field private mWebApiUrlPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/evernote/client/android/AuthenticationResult;->restore(Landroid/content/SharedPreferences;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "noteStoreUrl"    # Ljava/lang/String;
    .param p3, "webApiUrlPrefix"    # Ljava/lang/String;
    .param p4, "evernoteHost"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isAppLinkedNotebook"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/evernote/client/android/AuthenticationResult;->mAuthToken:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/evernote/client/android/AuthenticationResult;->mNoteStoreUrl:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/evernote/client/android/AuthenticationResult;->mWebApiUrlPrefix:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/evernote/client/android/AuthenticationResult;->mEvernoteHost:Ljava/lang/String;

    .line 78
    iput p5, p0, Lcom/evernote/client/android/AuthenticationResult;->mUserId:I

    .line 79
    iput-boolean p6, p0, Lcom/evernote/client/android/AuthenticationResult;->mIsAppLinkedNotebook:Z

    .line 80
    return-void
.end method


# virtual methods
.method clear(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 107
    const-string v1, "AuthenticationResult"

    const-string v2, "clearing Authentication results from SharedPreference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "evernote.mAuthToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v1, "evernote.notestoreUrl"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v1, "evernote.webApiUrlPrefix"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "evernote.mEvernoteHost"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v1, "evernote.userId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v1, "evernote.isAppLinkedNotebook"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-static {v0}, Lcom/evernote/client/android/SessionPreferences;->save(Landroid/content/SharedPreferences$Editor;)V

    .line 118
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessAuthTokenExpiration()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessAuthTokenExpiration:J

    return-wide v0
.end method

.method public getBusinessNoteStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessNoteStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessUser()Lcom/evernote/edam/type/User;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessUser:Lcom/evernote/edam/type/User;

    return-object v0
.end method

.method public getEvernoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mEvernoteHost:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mNoteStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mUserId:I

    return v0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mWebApiUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isAppLinkedNotebook()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mIsAppLinkedNotebook:Z

    return v0
.end method

.method persist(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 83
    const-string v1, "AuthenticationResult"

    const-string v2, "persisting Authentication results to SharedPreference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "evernote.mAuthToken"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->mAuthToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "evernote.notestoreUrl"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->mNoteStoreUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "evernote.webApiUrlPrefix"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->mWebApiUrlPrefix:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "evernote.mEvernoteHost"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->mEvernoteHost:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "evernote.userId"

    iget v2, p0, Lcom/evernote/client/android/AuthenticationResult;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "evernote.isAppLinkedNotebook"

    iget-boolean v2, p0, Lcom/evernote/client/android/AuthenticationResult;->mIsAppLinkedNotebook:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-static {v0}, Lcom/evernote/client/android/SessionPreferences;->save(Landroid/content/SharedPreferences$Editor;)V

    .line 94
    return-void
.end method

.method restore(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v0, "AuthenticationResult"

    const-string v1, "restoring Authentication results from SharedPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "evernote.mAuthToken"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mAuthToken:Ljava/lang/String;

    .line 99
    const-string v0, "evernote.notestoreUrl"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mNoteStoreUrl:Ljava/lang/String;

    .line 100
    const-string v0, "evernote.webApiUrlPrefix"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mWebApiUrlPrefix:Ljava/lang/String;

    .line 101
    const-string v0, "evernote.mEvernoteHost"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mEvernoteHost:Ljava/lang/String;

    .line 102
    const-string v0, "evernote.userId"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mUserId:I

    .line 103
    const-string v0, "evernote.isAppLinkedNotebook"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/client/android/AuthenticationResult;->mIsAppLinkedNotebook:Z

    .line 104
    return-void
.end method

.method setBusinessAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessAuthToken:Ljava/lang/String;

    .line 205
    return-void
.end method

.method setBusinessAuthTokenExpiration(J)V
    .locals 1
    .param p1, "businessAuthTokenExpiration"    # J

    .prologue
    .line 218
    iput-wide p1, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessAuthTokenExpiration:J

    .line 219
    return-void
.end method

.method setBusinessNoteStoreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessNoteStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessNoteStoreUrl:Ljava/lang/String;

    .line 177
    return-void
.end method

.method setBusinessUser(Lcom/evernote/edam/type/User;)V
    .locals 0
    .param p1, "user"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/evernote/client/android/AuthenticationResult;->mBusinessUser:Lcom/evernote/edam/type/User;

    .line 191
    return-void
.end method
