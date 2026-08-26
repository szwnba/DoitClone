.class Lim/doit/pro/activity/HomeActivity$3;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/HomeActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/HomeActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/HomeActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    .line 451
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 455
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/HomeActivity;->access$2(Lim/doit/pro/activity/HomeActivity;)V

    .line 456
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/HomeActivity;->access$3(Lim/doit/pro/activity/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/HomeActivity;->access$4(Lim/doit/pro/activity/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v1}, Lim/doit/pro/activity/HomeActivity;->access$5(Lim/doit/pro/activity/HomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/HomeActivity;->access$6(Lim/doit/pro/activity/HomeActivity;Z)V

    .line 460
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 464
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$3;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/HomeActivity;->access$7(Lim/doit/pro/activity/HomeActivity;)V

    .line 465
    return-void
.end method
