.class public Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BootGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BootGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapter"
.end annotation


# instance fields
.field registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/BootGuideActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/BootGuideActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 99
    iput-object p1, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    .line 100
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 101
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$2(Lim/doit/pro/activity/BootGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$2(Lim/doit/pro/activity/BootGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 136
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v1}, Lim/doit/pro/activity/BootGuideActivity;->access$2(Lim/doit/pro/activity/BootGuideActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    .local v0, "imageRes":I
    invoke-static {v0}, Lim/doit/pro/activity/BootGuideFragment;->newInstance(I)Lim/doit/pro/activity/BootGuideFragment;

    move-result-object v1

    return-object v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 123
    const/4 v0, -0x2

    return v0
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 107
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    return-object v0
.end method
