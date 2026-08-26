.class Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;
.super Lim/doit/pro/activity/listener/HorizontalSwipeListener;
.source "HomeMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/HomeMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/HomeMenuContent;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/HomeMenuContent;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;->this$0:Lim/doit/pro/ui/component/HomeMenuContent;

    invoke-direct {p0}, Lim/doit/pro/activity/listener/HorizontalSwipeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/HomeMenuContent;Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;-><init>(Lim/doit/pro/ui/component/HomeMenuContent;)V

    return-void
.end method


# virtual methods
.method public getLastMotionX()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;->this$0:Lim/doit/pro/ui/component/HomeMenuContent;

    invoke-static {v0}, Lim/doit/pro/ui/component/HomeMenuContent;->access$0(Lim/doit/pro/ui/component/HomeMenuContent;)I

    move-result v0

    return v0
.end method

.method public getLastMotionY()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;->this$0:Lim/doit/pro/ui/component/HomeMenuContent;

    invoke-static {v0}, Lim/doit/pro/ui/component/HomeMenuContent;->access$1(Lim/doit/pro/ui/component/HomeMenuContent;)I

    move-result v0

    return v0
.end method
