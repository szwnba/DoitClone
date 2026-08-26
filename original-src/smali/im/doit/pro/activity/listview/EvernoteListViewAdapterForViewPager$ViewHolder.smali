.class Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager$ViewHolder;
.super Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;
.source "EvernoteListViewAdapterForViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 26
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager$ViewHolder;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;

    .line 27
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;-><init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;Landroid/content/Context;)V

    .line 29
    const v1, 0x7f090052

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v0, v1

    .line 30
    .local v0, "paddingLeft":I
    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 31
    return-void
.end method
