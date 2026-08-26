.class Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnListViewItemLongClick"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;->doListViewItemSelected(Landroid/view/View;I)V

    .line 918
    const/4 v0, 0x1

    return v0
.end method
