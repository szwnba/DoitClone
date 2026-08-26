.class Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectTaskContextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectTaskContextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;,
        Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$TaskContextViewHolder;,
        Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_ADD:I

.field private final TYPE_ITEM:I

.field final synthetic this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->TYPE_ADD:I

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->TYPE_ITEM:I

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTaskContextDialog;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/TaskContext;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/TaskContext;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
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
    .line 156
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 157
    .local v1, "type":I
    if-nez p2, :cond_1

    .line 158
    if-nez v1, :cond_0

    .line 159
    new-instance v0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$3(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;Landroid/content/Context;)V

    .line 166
    .local v0, "holder":Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;->setTag(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 168
    return-object v0

    .line 161
    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$TaskContextViewHolder;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$3(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$TaskContextViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;Landroid/content/Context;)V

    .line 163
    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;
    goto :goto_0

    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;
    :cond_1
    move-object v0, p2

    .line 164
    check-cast v0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x2

    return v0
.end method
