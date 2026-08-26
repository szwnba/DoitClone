.class public Lcom/evernote/client/oauth/EvernoteAuthToken;
.super Lorg/scribe/model/Token;
.source "EvernoteAuthToken.java"


# static fields
.field private static final NOTESTORE_REGEX:Ljava/util/regex/Pattern;

.field private static final USERID_REGEX:Ljava/util/regex/Pattern;

.field private static final WEBAPI_REGEX:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x5fa723165c26654bL


# instance fields
.field private mAppLinkedNotebook:Z

.field private mNoteStoreUrl:Ljava/lang/String;

.field private mUserId:I

.field private mWebApiUrlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "edam_noteStoreUrl=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/oauth/EvernoteAuthToken;->NOTESTORE_REGEX:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "edam_webApiUrlPrefix=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/oauth/EvernoteAuthToken;->WEBAPI_REGEX:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "edam_userId=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/oauth/EvernoteAuthToken;->USERID_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/scribe/model/Token;Z)V
    .locals 3
    .param p1, "token"    # Lorg/scribe/model/Token;
    .param p2, "appLinkedNotebook"    # Z

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getRawResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getRawResponse()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/evernote/client/oauth/EvernoteAuthToken;->NOTESTORE_REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lcom/evernote/client/oauth/EvernoteAuthToken;->extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mNoteStoreUrl:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getRawResponse()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/evernote/client/oauth/EvernoteAuthToken;->WEBAPI_REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lcom/evernote/client/oauth/EvernoteAuthToken;->extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mWebApiUrlPrefix:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getRawResponse()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/evernote/client/oauth/EvernoteAuthToken;->USERID_REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lcom/evernote/client/oauth/EvernoteAuthToken;->extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mUserId:I

    .line 58
    iput-boolean p2, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mAppLinkedNotebook:Z

    .line 59
    return-void
.end method

.method private extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/scribe/utils/OAuthEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response body is incorrect. Can\'t extract token and secret from this: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 67
    invoke-direct {v1, v2, v3}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mNoteStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mUserId:I

    return v0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mWebApiUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isAppLinkedNotebook()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/evernote/client/oauth/EvernoteAuthToken;->mAppLinkedNotebook:Z

    return v0
.end method
