.class public Lim/doit/pro/activity/listview/EvernoteListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "EvernoteListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;,
        Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCurrentMedia:Lim/doit/pro/model/Media;

.field protected mIsEditable:Z

.field protected mMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveListener:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

.field private onDeleteEvernoteNoteClick:Landroid/view/View$OnClickListener;

.field private onRemoveEvernoteClick:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

.field private onViewEvernoteClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 36
    .local p2, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    new-instance v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$1;-><init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V

    iput-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->onViewEvernoteClick:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$2;-><init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V

    iput-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->onDeleteEvernoteNoteClick:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$3;-><init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V

    iput-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->onRemoveEvernoteClick:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .line 38
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    .line 40
    iput-boolean p3, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mIsEditable:Z

    .line 41
    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->showRemoveEvernoteNoteDialog()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->removeTaskEvernote()V

    return-void
.end method

.method private removeTaskEvernote()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mCurrentMedia:Lim/doit/pro/model/Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mRemoveListener:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mRemoveListener:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mCurrentMedia:Lim/doit/pro/model/Media;

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;->onRemove(Lim/doit/pro/model/Media;)V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mCurrentMedia:Lim/doit/pro/model/Media;

    .line 162
    return-void
.end method

.method private showRemoveEvernoteNoteDialog()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c025f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c002c

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c002f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    iget-object v2, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 144
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    iget-object v2, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->onRemoveEvernoteClick:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 145
    iget-object v2, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "remove note dialog"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected buildViewHolder()Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;-><init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/Media;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Media;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->getItem(I)Lim/doit/pro/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "holder":Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 73
    check-cast v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;

    .line 78
    :goto_0
    invoke-virtual {p0, p1, v0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->setViewContent(ILim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;)V

    .line 79
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->buildViewHolder()Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->initItemListener(Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;)V

    goto :goto_0
.end method

.method protected initItemListener(Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;

    .prologue
    .line 87
    iget-boolean v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mIsEditable:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->deleteBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->deleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->onDeleteEvernoteNoteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :goto_0
    iget-object v0, p1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->onViewEvernoteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->deleteBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnRemoveClickListener(Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    .prologue
    .line 48
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->mRemoveListener:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    .line 49
    return-void
.end method

.method protected setViewContent(ILim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "holder"    # Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->getItem(I)Lim/doit/pro/model/Media;

    move-result-object v0

    .line 98
    .local v0, "media":Lim/doit/pro/model/Media;
    iget-object v1, p2, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p2, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p2, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
