.class Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectRepeatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;,
        Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog;Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance v0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeatDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;Landroid/content/Context;)V

    .line 153
    .local v0, "holder":Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 154
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;
    :cond_0
    move-object v0, p2

    .line 151
    check-cast v0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;
    goto :goto_0
.end method
