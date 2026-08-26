.class Lim/doit/pro/activity/RemindPopupActivity$1;
.super Ljava/lang/Object;
.source "RemindPopupActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/RemindPopupActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/RemindPopupActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/RemindPopupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/RemindPopupActivity$1;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$1;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/RemindPopupActivity;->access$1(Lim/doit/pro/activity/RemindPopupActivity;I)V

    .line 110
    return-void
.end method
