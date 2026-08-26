.class Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectTagsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectTagsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;,
        Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;,
        Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_ADD:I

.field private final TYPE_ITEM:I

.field final synthetic this$0:Lim/doit/pro/ui/component/SelectTagsDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->TYPE_ADD:I

    .line 161
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->TYPE_ITEM:I

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectTagsDialog;Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$3(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$3(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/Tag;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$3(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Tag;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 192
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 199
    .local v1, "type":I
    if-nez p2, :cond_1

    .line 200
    if-nez v1, :cond_0

    .line 201
    new-instance v0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$5(Lim/doit/pro/ui/component/SelectTagsDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;Landroid/content/Context;)V

    .line 208
    .local v0, "holder":Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 210
    return-object v0

    .line 203
    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$5(Lim/doit/pro/ui/component/SelectTagsDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$TagViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;Landroid/content/Context;)V

    .line 205
    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
    goto :goto_0

    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
    :cond_1
    move-object v0, p2

    .line 206
    check-cast v0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    return v0
.end method
