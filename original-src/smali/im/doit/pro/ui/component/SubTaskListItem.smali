.class public Lim/doit/pro/ui/component/SubTaskListItem;
.super Landroid/widget/LinearLayout;
.source "SubTaskListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;,
        Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;,
        Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;,
        Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;
    }
.end annotation


# instance fields
.field private final COMPLETED:[I

.field public completeBtn:Landroid/widget/ImageView;

.field public deleteBtn:Landroid/widget/ImageView;

.field private isDeleting:Z

.field private mActivity:Landroid/app/Activity;

.field private mCompleteListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

.field private mDeleteListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

.field private mFocusListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;

.field private mIsCompleted:Z

.field private mPosition:I

.field private mSaveListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;

.field private mSubTask:Lim/doit/pro/model/SubTask;

.field private mTask:Lim/doit/pro/model/Task;

.field public titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/model/SubTask;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "task"    # Lim/doit/pro/model/Task;
    .param p3, "subTask"    # Lim/doit/pro/model/SubTask;
    .param p4, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskListItem;->isDeleting:Z

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0100cc

    aput v1, v0, v2

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->COMPLETED:[I

    .line 35
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mIsCompleted:Z

    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mTask:Lim/doit/pro/model/Task;

    .line 46
    iput-object p3, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSubTask:Lim/doit/pro/model/SubTask;

    .line 47
    iput p4, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mPosition:I

    .line 48
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->init()V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskListItem;->isDeleting:Z

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0100cc

    aput v1, v0, v2

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->COMPLETED:[I

    .line 35
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mIsCompleted:Z

    .line 39
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SubTaskListItem;Landroid/widget/EditText;)Z
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SubTaskListItem;->save(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SubTaskListItem;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->isDeleting:Z

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mFocusListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SubTaskListItem;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mCompleteListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SubTaskListItem;Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->isDeleting:Z

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mDeleteListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mActivity:Landroid/app/Activity;

    const v2, 0x7f030088

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    const/4 v1, -0x1

    .line 88
    const/4 v2, -0x2

    .line 86
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->initView()V

    .line 91
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->setViewContent()V

    .line 92
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->registerListner()V

    .line 93
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->completeBtn:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0b018f

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SubTaskTitleView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    .line 98
    const v0, 0x7f0b018e

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->deleteBtn:Landroid/widget/ImageView;

    .line 99
    return-void
.end method

.method private registerListner()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->setViewEnable(Landroid/view/View;Z)V

    .line 126
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->completeBtn:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->setViewEnable(Landroid/view/View;Z)V

    .line 133
    :goto_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    new-instance v1, Lim/doit/pro/ui/component/SubTaskListItem$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SubTaskListItem$1;-><init>(Lim/doit/pro/ui/component/SubTaskListItem;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 140
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    new-instance v1, Lim/doit/pro/ui/component/SubTaskListItem$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SubTaskListItem$2;-><init>(Lim/doit/pro/ui/component/SubTaskListItem;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    new-instance v1, Lim/doit/pro/ui/component/SubTaskListItem$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SubTaskListItem$3;-><init>(Lim/doit/pro/ui/component/SubTaskListItem;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/ui/component/SubTaskListItem$4;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SubTaskListItem$4;-><init>(Lim/doit/pro/ui/component/SubTaskListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->deleteBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/ui/component/SubTaskListItem$5;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SubTaskListItem$5;-><init>(Lim/doit/pro/ui/component/SubTaskListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->setViewFocus(Landroid/view/View;Z)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    invoke-direct {p0, v0, v2}, Lim/doit/pro/ui/component/SubTaskListItem;->setViewEnable(Landroid/view/View;Z)V

    .line 131
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->completeBtn:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lim/doit/pro/ui/component/SubTaskListItem;->setViewEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private save(Landroid/widget/EditText;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 196
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSaveListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSaveListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;->save(Landroid/widget/EditText;)V

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCompleteViewContent()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->completeBtn:Landroid/widget/ImageView;

    iget v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->completeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSubTask:Lim/doit/pro/model/SubTask;

    invoke-virtual {v1}, Lim/doit/pro/model/SubTask;->isCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 110
    return-void
.end method

.method private setDeleteViewContent()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->deleteBtn:Landroid/widget/ImageView;

    iget v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method private setTitleViewContent()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    iget v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSubTask:Lim/doit/pro/model/SubTask;

    invoke-virtual {v1}, Lim/doit/pro/model/SubTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->titleEditText:Lim/doit/pro/ui/component/SubTaskTitleView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSubTask:Lim/doit/pro/model/SubTask;

    invoke-virtual {v1}, Lim/doit/pro/model/SubTask;->isCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setComplete(Z)V

    .line 117
    return-void
.end method

.method private setViewContent()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->setCompleteViewContent()V

    .line 103
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->setTitleViewContent()V

    .line 104
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskListItem;->setDeleteViewContent()V

    .line 105
    return-void
.end method

.method private setViewEnable(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method private setViewFocus(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 210
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mIsCompleted:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 77
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 78
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mIsCompleted:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->COMPLETED:[I

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->mergeDrawableStates([I[I)[I

    .line 81
    :cond_0
    return-object v0
.end method

.method public setCompleted(Z)V
    .locals 0
    .param p1, "isCompleted"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mIsCompleted:Z

    .line 53
    return-void
.end method

.method public setOnSubTaskCompleteListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mCompleteListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

    .line 65
    return-void
.end method

.method public setOnSubTaskDeleteListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

    .prologue
    .line 68
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mDeleteListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

    .line 69
    return-void
.end method

.method public setOnSubTaskFocusListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;

    .prologue
    .line 72
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mFocusListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;

    .line 73
    return-void
.end method

.method public setOnSubTaskSaveListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;

    .prologue
    .line 60
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem;->mSaveListener:Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;

    .line 61
    return-void
.end method
