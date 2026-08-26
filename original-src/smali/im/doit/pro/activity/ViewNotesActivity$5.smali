.class Lim/doit/pro/activity/ViewNotesActivity$5;
.super Ljava/lang/Object;
.source "ViewNotesActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ViewNotesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ViewNotesActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ViewNotesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ViewNotesActivity$5;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "paramInt1"    # I
    .param p2, "paramFloat"    # F
    .param p3, "paramInt2"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity$5;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/ViewNotesActivity;->access$1(Lim/doit/pro/activity/ViewNotesActivity;I)V

    .line 185
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity$5;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ViewNotesActivity;->access$4(Lim/doit/pro/activity/ViewNotesActivity;)V

    .line 186
    return-void
.end method
