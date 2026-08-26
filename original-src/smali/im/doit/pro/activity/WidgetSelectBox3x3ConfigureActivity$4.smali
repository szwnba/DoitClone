.class Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$4;
.super Ljava/lang/Object;
.source "WidgetSelectBox3x3ConfigureActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$4;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 105
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
    .line 110
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$4;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$2(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getChild(II)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    move-result-object v0

    .line 112
    .local v0, "dataItem":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$4;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->id:Ljava/lang/String;

    iget-object v3, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->type:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$3(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    return v1
.end method
