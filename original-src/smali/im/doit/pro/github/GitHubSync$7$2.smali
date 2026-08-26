.class Lim/doit/pro/github/GitHubSync$7$2;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/GitHubSync$7;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSync$7;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$7$2;->this$0:Lim/doit/pro/github/GitHubSync$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lim/doit/pro/github/GitHubSync$7$2;->this$0:Lim/doit/pro/github/GitHubSync$7;

    iget-object v1, v1, Lim/doit/pro/github/GitHubSync$7;->val$a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6062\u590d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    const-string v1, "\u6570\u636e\u5df2\u6062\u590d\uff0c\u5e94\u7528\u5373\u5c06\u91cd\u542f\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lim/doit/pro/github/GitHubSync$7$2$1;

    invoke-direct {v1, p0}, Lim/doit/pro/github/GitHubSync$7$2$1;-><init>(Lim/doit/pro/github/GitHubSync$7$2;)V

    .line 225
    const-string v2, "\u7acb\u5373\u91cd\u542f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 231
    return-void
.end method
