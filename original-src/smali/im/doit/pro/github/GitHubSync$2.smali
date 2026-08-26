.class Lim/doit/pro/github/GitHubSync$2;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->editToken(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$2;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lim/doit/pro/github/GitHubSync$2;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 106
    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lim/doit/pro/github/GitHubSync$2;->val$a:Landroid/app/Activity;

    invoke-static {p2}, Lim/doit/pro/github/GitHubSync;->access$500(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "token"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    iget-object p2, p0, Lim/doit/pro/github/GitHubSync$2;->val$a:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2c

    const-string p1, "\u5df2\u6e05\u7a7a Token"

    goto :goto_2e

    :cond_2c
    const-string p1, "Token \u5df2\u4fdd\u5b58"

    :goto_2e
    invoke-static {p2, p1}, Lim/doit/pro/github/GitHubSync;->access$600(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method
