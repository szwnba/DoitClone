.class Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$3;
.super Ljava/lang/Object;
.source "WidgetSelectBox3x3ConfigureActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$3;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 92
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
    .line 97
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$3;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$2(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    move-result-object v0

    .line 98
    .local v0, "dataItem":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;
    iget v1, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->groupType:I

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 102
    :goto_0
    return v1

    .line 101
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$3;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->id:Ljava/lang/String;

    iget-object v3, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->dataType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$3(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    goto :goto_0
.end method
