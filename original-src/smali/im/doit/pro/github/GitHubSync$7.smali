.class Lim/doit/pro/github/GitHubSync$7;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->download(Landroid/app/Activity;)V
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

    .line 204
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$7;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 207
    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$7;->val$a:Landroid/app/Activity;

    new-instance p2, Lim/doit/pro/github/GitHubSync$7$1;

    invoke-direct {p2, p0}, Lim/doit/pro/github/GitHubSync$7$1;-><init>(Lim/doit/pro/github/GitHubSync$7;)V

    new-instance v0, Lim/doit/pro/github/GitHubSync$7$2;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSync$7$2;-><init>(Lim/doit/pro/github/GitHubSync$7;)V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u6062\u590d\u2026"

    invoke-static {p1, v1, p2, v0}, Lim/doit/pro/github/GitHubSync;->access$1600(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/github/GitHubSync$Worker;Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method
