.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$3;
.super Ljava/lang/Object;
.source "WidgetBadgeConfigureActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$3;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 100
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$3;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$2(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    move-result-object v0

    .line 101
    .local v0, "dataItem":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
    iget v1, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->groupType:I

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    .line 104
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$3;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->id:Ljava/lang/String;

    iget-object v3, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->dataType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$3(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x1

    goto :goto_0
.end method
