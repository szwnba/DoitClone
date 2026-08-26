.class Lim/doit/pro/activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/HomeActivity;->showTimeZoneDiffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/HomeActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity$6;->this$0:Lim/doit/pro/activity/HomeActivity;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 693
    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity$6;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v1}, Lim/doit/pro/activity/HomeActivity;->access$9(Lim/doit/pro/activity/HomeActivity;)Landroid/app/FragmentManager;

    move-result-object v1

    .line 694
    const-string v2, "DIALOG_TAG_TIMEZONE_DIFF"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 693
    check-cast v0, Lim/doit/pro/ui/component/DMessageDialog;

    .line 695
    .local v0, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lim/doit/pro/ui/component/DMessageDialog;->dismissAllowingStateLoss()V

    .line 698
    :cond_0
    return-void
.end method
