.class Lim/doit/pro/activity/listview/ListViewAdapter$15;
.super Lim/doit/pro/activity/listener/ConvertToProjectDoneListener;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->convertTaskToProject()V
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$15;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 1340
    invoke-direct {p0}, Lim/doit/pro/activity/listener/ConvertToProjectDoneListener;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$15;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->finishActionMode()V

    .line 1345
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$15;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1346
    return-void
.end method
