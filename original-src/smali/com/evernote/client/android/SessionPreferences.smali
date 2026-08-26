.class public Lcom/evernote/client/android/SessionPreferences;
.super Ljava/lang/Object;
.source "SessionPreferences.java"


# static fields
.field public static final KEY_AUTHTOKEN:Ljava/lang/String; = "evernote.mAuthToken"

.field public static final KEY_BUSINESSID:Ljava/lang/String; = "evernote.businessId"

.field public static final KEY_EVERNOTEHOST:Ljava/lang/String; = "evernote.mEvernoteHost"

.field public static final KEY_ISAPPLINKEDNOTEBOOK:Ljava/lang/String; = "evernote.isAppLinkedNotebook"

.field public static final KEY_NOTESTOREURL:Ljava/lang/String; = "evernote.notestoreUrl"

.field public static final KEY_USERID:Ljava/lang/String; = "evernote.userId"

.field public static final KEY_WEBAPIURLPREFIX:Ljava/lang/String; = "evernote.webApiUrlPrefix"

.field static final PREFERENCE_NAME:Ljava/lang/String; = "evernote.preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v0, "evernote.preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static save(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
