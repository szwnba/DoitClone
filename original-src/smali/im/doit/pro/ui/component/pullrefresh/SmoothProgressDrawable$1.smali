.class Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 199
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$0(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    invoke-static {v3}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$1(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$2(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;F)V

    .line 200
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$0(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    invoke-static {v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$3(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 201
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$4(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;Z)V

    .line 202
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$2(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;F)V

    .line 204
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    invoke-static {v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->access$5(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 205
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;->this$0:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->invalidateSelf()V

    .line 206
    return-void
.end method
