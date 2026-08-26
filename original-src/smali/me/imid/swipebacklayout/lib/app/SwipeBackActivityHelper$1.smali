.class Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper$1;
.super Ljava/lang/Object;
.source "SwipeBackActivityHelper.java"

# interfaces
.implements Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->onActivityCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;


# direct methods
.method constructor <init>(Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper$1;->this$0:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeTouch(I)V
    .locals 1
    .param p1, "edgeFlag"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper$1;->this$0:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->convertActivityToTranslucent()V

    .line 47
    return-void
.end method

.method public onScrollOverThreshold()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onScrollStateChange(IF)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "scrollPercent"    # F

    .prologue
    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper$1;->this$0:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->convertActivityFromTranslucent()V

    .line 42
    :cond_0
    return-void
.end method
