.class public Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;
.super Lim/doit/pro/activity/listview/EvernoteListViewAdapter;
.source "EvernoteListViewAdapterForViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "isEditable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected buildViewHolder()Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager$ViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager$ViewHolder;-><init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;Landroid/content/Context;)V

    return-object v0
.end method
