.class public Lorg/scribe/utils/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Received an invalid parameter"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "^[a-zA-Z][a-zA-Z0-9+.-]*://\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/scribe/utils/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(ZLjava/lang/String;)V
    .locals 2
    .param p0, "requirements"    # Z
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "Received an invalid parameter"

    .line 80
    .local v0, "message":Ljava/lang/String;
    :goto_0
    if-nez p0, :cond_2

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 79
    goto :goto_0

    .line 84
    .restart local v0    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkValidOAuthCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lorg/scribe/utils/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lorg/scribe/utils/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 55
    return-void
.end method

.method private static isUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lorg/scribe/utils/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
