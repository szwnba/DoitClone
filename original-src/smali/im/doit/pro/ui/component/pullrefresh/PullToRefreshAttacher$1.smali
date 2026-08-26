.class Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$1;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->minimizeHeader()V

    .line 642
    return-void
.end method
