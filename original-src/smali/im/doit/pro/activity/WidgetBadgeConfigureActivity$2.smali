.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$2;
.super Ljava/lang/Object;
.source "WidgetBadgeConfigureActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$2;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$2;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->isCollapse:Z

    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$2;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$2(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method
