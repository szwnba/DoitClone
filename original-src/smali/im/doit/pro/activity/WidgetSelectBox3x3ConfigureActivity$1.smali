.class Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$1;
.super Ljava/lang/Object;
.source "WidgetSelectBox3x3ConfigureActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$1;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$1;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->isCollapse:Z

    .line 81
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$1;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$2(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method
