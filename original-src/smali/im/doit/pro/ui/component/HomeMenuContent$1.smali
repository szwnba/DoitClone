.class Lim/doit/pro/ui/component/HomeMenuContent$1;
.super Ljava/lang/Object;
.source "HomeMenuContent.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnSwipeRightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/HomeMenuContent;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/HomeMenuContent;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/HomeMenuContent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/HomeMenuContent$1;->this$0:Lim/doit/pro/ui/component/HomeMenuContent;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeRight()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/HomeMenuContent$1;->this$0:Lim/doit/pro/ui/component/HomeMenuContent;

    invoke-static {v0}, Lim/doit/pro/ui/component/HomeMenuContent;->access$2(Lim/doit/pro/ui/component/HomeMenuContent;)Lim/doit/pro/activity/listener/OnSwipeRightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lim/doit/pro/ui/component/HomeMenuContent$1;->this$0:Lim/doit/pro/ui/component/HomeMenuContent;

    invoke-static {v0}, Lim/doit/pro/ui/component/HomeMenuContent;->access$2(Lim/doit/pro/ui/component/HomeMenuContent;)Lim/doit/pro/activity/listener/OnSwipeRightListener;

    move-result-object v0

    invoke-interface {v0}, Lim/doit/pro/activity/listener/OnSwipeRightListener;->onSwipeRight()V

    .line 47
    :cond_0
    return-void
.end method
