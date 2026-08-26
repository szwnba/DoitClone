.class Lim/doit/pro/activity/BaseViewPagerActivity$6;
.super Ljava/lang/Object;
.source "BaseViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/BaseViewPagerActivity;->showTagFitlerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseViewPagerActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$6;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onTagFilter(Ljava/util/ArrayList;ZZ)V
    .locals 2
    .param p2, "isAll"    # Z
    .param p3, "isUntagged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 271
    .local v0, "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    if-eqz p3, :cond_1

    .line 272
    new-instance v0, Lim/doit/pro/ui/model/TagFilter;

    .end local v0    # "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    invoke-direct {v0}, Lim/doit/pro/ui/model/TagFilter;-><init>()V

    .line 273
    .restart local v0    # "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/model/TagFilter;->setUntagged(Z)V

    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$6;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    invoke-static {v1, v0}, Lim/doit/pro/activity/BaseViewPagerActivity;->access$0(Lim/doit/pro/activity/BaseViewPagerActivity;Lim/doit/pro/ui/model/TagFilter;)V

    .line 284
    return-void

    .line 275
    :cond_1
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    const/4 p2, 0x1

    .line 278
    :cond_2
    if-nez p2, :cond_0

    .line 279
    new-instance v0, Lim/doit/pro/ui/model/TagFilter;

    .end local v0    # "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    invoke-direct {v0}, Lim/doit/pro/ui/model/TagFilter;-><init>()V

    .line 280
    .restart local v0    # "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/model/TagFilter;->setTags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public selectAllTags()V
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lim/doit/pro/activity/BaseViewPagerActivity$6;->onTagFilter(Ljava/util/ArrayList;ZZ)V

    .line 261
    return-void
.end method

.method public selectTagsComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, v0, v0}, Lim/doit/pro/activity/BaseViewPagerActivity$6;->onTagFilter(Ljava/util/ArrayList;ZZ)V

    .line 256
    return-void
.end method

.method public selectUntagged()V
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lim/doit/pro/activity/BaseViewPagerActivity$6;->onTagFilter(Ljava/util/ArrayList;ZZ)V

    .line 266
    return-void
.end method
