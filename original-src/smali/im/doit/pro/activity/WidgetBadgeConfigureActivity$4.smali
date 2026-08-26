.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$4;
.super Ljava/lang/Object;
.source "WidgetBadgeConfigureActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$4;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 113
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$4;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$2(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getChild(II)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    move-result-object v0

    .line 115
    .local v0, "dataItem":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$4;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->id:Ljava/lang/String;

    iget-object v3, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->type:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$3(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return v1
.end method
