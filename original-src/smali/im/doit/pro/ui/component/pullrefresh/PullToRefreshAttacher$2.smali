.class Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;-><init>(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

.field private final synthetic val$decorView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;->this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    iput-object p2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;->val$decorView:Landroid/view/ViewGroup;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;->val$decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;->this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;->this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-static {v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->access$0(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->addHeaderViewToActivity(Landroid/view/View;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;->val$decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
