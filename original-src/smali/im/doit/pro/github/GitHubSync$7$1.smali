.class Lim/doit/pro/github/GitHubSync$7$1;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/GitHubSync$7;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSync$7;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$7$1;->this$0:Lim/doit/pro/github/GitHubSync$7;

    iput-object p2, p0, Lim/doit/pro/github/GitHubSync$7$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 298
    iget-object v0, p0, Lim/doit/pro/github/GitHubSync$7$1;->this$0:Lim/doit/pro/github/GitHubSync$7;

    iget-object v0, v0, Lim/doit/pro/github/GitHubSync$7;->val$a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540c\u6b65\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/github/GitHubSync$7$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/github/GitHubSync;->access$600(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
