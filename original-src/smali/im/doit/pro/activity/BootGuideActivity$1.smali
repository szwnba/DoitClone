.class Lim/doit/pro/activity/BootGuideActivity$1;
.super Ljava/lang/Object;
.source "BootGuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BootGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isLastPage:Z

.field final synthetic this$0:Lim/doit/pro/activity/BootGuideActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/BootGuideActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/BootGuideActivity$1;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->isLastPage:Z

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 169
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$1(Lim/doit/pro/activity/BootGuideActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->isLastPage:Z

    .line 156
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$2(Lim/doit/pro/activity/BootGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 157
    if-nez p3, :cond_1

    .line 158
    iget-boolean v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->isLastPage:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$3(Lim/doit/pro/activity/BootGuideActivity;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->isLastPage:Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$1;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/BootGuideActivity;->access$0(Lim/doit/pro/activity/BootGuideActivity;I)V

    .line 148
    return-void
.end method
