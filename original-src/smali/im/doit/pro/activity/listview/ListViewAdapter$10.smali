.class Lim/doit/pro/activity/listview/ListViewAdapter$10;
.super Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->onDeleteTagFilterClick()Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$10;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 939
    invoke-direct {p0}, Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTagFitler()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$10;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$15(Lim/doit/pro/activity/listview/ListViewAdapter;)Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$10;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$15(Lim/doit/pro/activity/listview/ListViewAdapter;)Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;

    move-result-object v0

    invoke-interface {v0}, Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;->deleteTagFilter()V

    .line 946
    :cond_0
    return-void
.end method
