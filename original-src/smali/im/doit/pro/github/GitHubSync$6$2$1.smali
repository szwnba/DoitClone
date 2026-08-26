.class Lim/doit/pro/github/GitHubSync$6$2$1;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync$6$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/github/GitHubSync$6$2;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSync$6$2;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$6$2$1;->this$1:Lim/doit/pro/github/GitHubSync$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 193
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 194
    return-void
.end method
