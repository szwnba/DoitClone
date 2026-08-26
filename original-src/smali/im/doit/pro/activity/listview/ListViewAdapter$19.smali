.class Lim/doit/pro/activity/listview/ListViewAdapter$19;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->showSelectPriorityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$19;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 1420
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$19;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setSelectedItemsPriority(I)V

    .line 1421
    return-void
.end method
