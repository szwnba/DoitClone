.class Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectProjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;,
        Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;,
        Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_ADD:I

.field private final TYPE_ITEM:I

.field final synthetic this$0:Lim/doit/pro/ui/component/SelectProjectDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->TYPE_ADD:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->TYPE_ITEM:I

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog;Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectProjectDialog;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$3(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$3(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/Project;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$3(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/Project;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
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
    .line 165
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 166
    .local v1, "type":I
    if-nez p2, :cond_1

    .line 167
    if-nez v1, :cond_0

    .line 168
    new-instance v0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$1(Lim/doit/pro/ui/component/SelectProjectDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V

    .line 175
    .local v0, "holder":Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;->setTag(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 177
    return-object v0

    .line 170
    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$1(Lim/doit/pro/ui/component/SelectProjectDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ProjectViewHolder;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V

    .line 172
    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
    goto :goto_0

    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
    :cond_1
    move-object v0, p2

    .line 173
    check-cast v0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x2

    return v0
.end method
