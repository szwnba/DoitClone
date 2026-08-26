.class Lim/doit/pro/github/GitHubSync$1;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->onSettings(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 66
    if-nez p2, :cond_8

    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$000(Landroid/app/Activity;)V

    goto :goto_28

    .line 67
    :cond_8
    const/4 p1, 0x1

    if-ne p2, p1, :cond_11

    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$100(Landroid/app/Activity;)V

    goto :goto_28

    .line 68
    :cond_11
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1a

    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$200(Landroid/app/Activity;)V

    goto :goto_28

    .line 69
    :cond_1a
    const/4 p1, 0x3

    if-ne p2, p1, :cond_23

    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$300(Landroid/app/Activity;)V

    goto :goto_28

    .line 70
    :cond_23
    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$400(Landroid/app/Activity;)V

    .line 71
    :goto_28
    return-void
.end method
