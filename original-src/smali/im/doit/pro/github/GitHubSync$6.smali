.class Lim/doit/pro/github/GitHubSync$6;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->upload(Landroid/app/Activity;)V
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

    .line 194
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$6;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 196
    iget-object v0, p0, Lim/doit/pro/github/GitHubSync$6;->val$a:Landroid/app/Activity;

    const-string v1, "\u2713 \u5907\u4efd\u5df2\u4e0a\u4f20\u5230 GitHub"

    invoke-static {v0, v1}, Lim/doit/pro/github/GitHubSync;->access$600(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
