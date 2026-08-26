.class Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    return-void
.end method

.method private getNotebookName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "notebookId"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$17(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$17(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 589
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 583
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/Notebook;

    .line 584
    .local v0, "notebook":Lcom/evernote/edam/type/Notebook;
    invoke-virtual {v0}, Lcom/evernote/edam/type/Notebook;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {v0}, Lcom/evernote/edam/type/Notebook;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 549
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 561
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 568
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;

    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {v0, p0, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;Landroid/content/Context;)V

    .line 572
    .local v0, "holder":Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;

    move-result-object v1

    .line 573
    .local v1, "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    iget-object v2, v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$1(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v2, v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->createdView:Landroid/widget/TextView;

    .line 575
    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$2(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v3

    .line 574
    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v2, v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->notebookNameView:Landroid/widget/TextView;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$3(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->getNotebookName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;
    .end local v1    # "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    :cond_0
    move-object v0, p2

    .line 570
    check-cast v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;
    goto :goto_0
.end method
