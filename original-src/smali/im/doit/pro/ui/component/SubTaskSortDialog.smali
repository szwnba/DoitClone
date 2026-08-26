.class public Lim/doit/pro/ui/component/SubTaskSortDialog;
.super Ljava/lang/Object;
.source "SubTaskSortDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;,
        Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;
    }
.end annotation


# instance fields
.field private closeBtn:Landroid/widget/Button;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private mIsCreate:Z

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mSubTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation
.end field

.field private onCloseClick:Landroid/view/View$OnClickListener;

.field private onSortSubTaskFinishListener:Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLjava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lim/doit/pro/ui/component/SubTaskSortDialog$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$1;-><init>(Lim/doit/pro/ui/component/SubTaskSortDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->onCloseClick:Landroid/view/View$OnClickListener;

    .line 64
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mActivity:Landroid/app/Activity;

    .line 65
    iput-boolean p2, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mIsCreate:Z

    .line 66
    iput-object p3, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mSubTasks:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SubTaskSortDialog;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SubTaskSortDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SubTaskSortDialog;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mIsCreate:Z

    return v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SubTaskSortDialog;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->refreshSubTaskList()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mSubTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SubTaskSortDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SubTaskSortDialog;->completeSubTask(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SubTaskSortDialog;)Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->onSortSubTaskFinishListener:Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;

    return-object v0
.end method

.method private completeSubTask(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 284
    .local v1, "position":I
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 285
    .local v0, "isComplete":Z
    :goto_0
    iget-object v3, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mSubTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/SubTask;

    .line 286
    .local v2, "subTask":Lim/doit/pro/model/SubTask;
    if-eqz v0, :cond_2

    .line 287
    iget-boolean v3, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mIsCreate:Z

    if-eqz v3, :cond_1

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    .line 299
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 300
    return-void

    .line 284
    .end local v0    # "isComplete":Z
    .end local v2    # "subTask":Lim/doit/pro/model/SubTask;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    .restart local v0    # "isComplete":Z
    .restart local v2    # "subTask":Lim/doit/pro/model/SubTask;
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v3, v2}, Lim/doit/pro/db/persist/SubTaskDao;->complete(Lim/doit/pro/model/SubTask;)V

    goto :goto_1

    .line 293
    :cond_2
    iget-boolean v3, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mIsCreate:Z

    if-eqz v3, :cond_3

    .line 294
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    goto :goto_1

    .line 296
    :cond_3
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v3, v2}, Lim/doit/pro/db/persist/SubTaskDao;->uncomplete(Lim/doit/pro/model/SubTask;)V

    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 280
    :cond_0
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 72
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0d00fc

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    .line 74
    const v4, 0x7f030054

    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 74
    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0b0112

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->closeBtn:Landroid/widget/Button;

    .line 77
    const v4, 0x7f0b0069

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 78
    new-instance v4, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-direct {v4, p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;-><init>(Lim/doit/pro/ui/component/SubTaskSortDialog;)V

    iput-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    .line 79
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v5, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v0, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;

    .line 81
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v5, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    const v6, 0x7f0b0190

    .line 80
    invoke-direct {v0, v4, v5, v6}, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;I)V

    .line 82
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 83
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 86
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 88
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 89
    .local v3, "window":Landroid/view/Window;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 91
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->initListener()V

    .line 92
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->closeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->onCloseClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lim/doit/pro/ui/component/SubTaskSortDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$2;-><init>(Lim/doit/pro/ui/component/SubTaskSortDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 266
    return-void
.end method

.method private refreshSubTaskList()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->notifyDataSetChanged()V

    .line 253
    return-void
.end method


# virtual methods
.method public setOnSortSubTaskFinishListner(Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog;->onSortSubTaskFinishListener:Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;

    .line 60
    return-void
.end method
