.class public Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/FilterListFragment;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/FilterListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 174
    iput-object p2, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mContext:Landroid/content/Context;

    .line 175
    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;)Lim/doit/pro/activity/FilterListFragment;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->this$0:Lim/doit/pro/activity/FilterListFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mListEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mListEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mListEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lim/doit/pro/model/Filter;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mListEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->getItem(I)Lim/doit/pro/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getSubTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "viewHolder":Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->getItem(I)Lim/doit/pro/model/Filter;

    move-result-object v0

    .line 217
    .local v0, "entity":Lim/doit/pro/model/Filter;
    if-nez p2, :cond_0

    .line 218
    new-instance v1, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;
    iget-object v2, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;Landroid/content/Context;)V

    .line 222
    .restart local v1    # "viewHolder":Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;
    :goto_0
    invoke-virtual {v1, p1, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setViewContent(ILim/doit/pro/model/Filter;)V

    .line 223
    const v2, 0x7f020151

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setItemBackgroud(I)V

    .line 224
    return-object v1

    :cond_0
    move-object v1, p2

    .line 220
    check-cast v1, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;

    goto :goto_0
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->mListEntities:Ljava/util/ArrayList;

    .line 179
    return-void
.end method

.method public setDatasAndRefreshView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->setDatas(Ljava/util/ArrayList;)V

    .line 187
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->this$0:Lim/doit/pro/activity/FilterListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/FilterListFragment;->mUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    invoke-virtual {p0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->getSubTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;->updateActionBarSubTitle(Ljava/lang/String;)V

    .line 189
    return-void
.end method
