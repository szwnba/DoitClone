.class public Lim/doit/pro/activity/DailyReviewDoneFragment;
.super Landroid/support/v4/app/Fragment;
.source "DailyReviewDoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;
    }
.end annotation


# static fields
.field private static final KEY_NOTES:Ljava/lang/String; = "notes"

.field private static final KEY_RATE:Ljava/lang/String; = "rate"

.field private static final KEY_UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private mDailyReviewUUID:Ljava/lang/String;

.field private mNotes:Ljava/lang/String;

.field private mRate:I

.field private mReviewComment:Landroid/widget/EditText;

.field private mStarBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mTopBarChangeListener:Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

.field private onStarClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mStarBtns:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewDoneFragment$1;-><init>(Lim/doit/pro/activity/DailyReviewDoneFragment;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->onStarClick:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyReviewDoneFragment;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mRate:I

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/DailyReviewDoneFragment;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mRate:I

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/DailyReviewDoneFragment;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->setStarViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/DailyReviewDoneFragment;)Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mTopBarChangeListener:Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/DailyReviewDoneFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mDailyReviewUUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/DailyReviewDoneFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/DailyReviewDoneFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mNotes:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mDailyReviewUUID:Ljava/lang/String;

    .line 76
    const-string v1, "rate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mRate:I

    .line 77
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mNotes:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mStarBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mReviewComment:Landroid/widget/EditText;

    new-instance v2, Lim/doit/pro/activity/DailyReviewDoneFragment$2;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/DailyReviewDoneFragment$2;-><init>(Lim/doit/pro/activity/DailyReviewDoneFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    return-void

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 118
    .local v0, "item":Landroid/widget/ImageButton;
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->onStarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    .line 81
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    .line 88
    const v3, 0x7f0b0133

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 87
    iput-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mReviewComment:Landroid/widget/EditText;

    .line 89
    return-void

    .line 82
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "star_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 84
    .local v2, "starBtn":Landroid/widget/ImageButton;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mStarBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->setStarViewContent()V

    .line 93
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->setReviewCommentViewContent()V

    .line 94
    return-void
.end method

.method public static newInstance(Lim/doit/pro/model/DailyReview;)Lim/doit/pro/activity/DailyReviewDoneFragment;
    .locals 4
    .param p0, "dailyReview"    # Lim/doit/pro/model/DailyReview;

    .prologue
    .line 52
    new-instance v1, Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-direct {v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;-><init>()V

    .line 53
    .local v1, "newFragment":Lim/doit/pro/activity/DailyReviewDoneFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "uuid"

    invoke-virtual {p0}, Lim/doit/pro/model/DailyReview;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "rate"

    invoke-virtual {p0}, Lim/doit/pro/model/DailyReview;->getRate()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v2, "notes"

    invoke-virtual {p0}, Lim/doit/pro/model/DailyReview;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method private setReviewCommentViewContent()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mReviewComment:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mNotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method private setStarViewContent()V
    .locals 7

    .prologue
    .line 97
    iget v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mRate:I

    .line 98
    .local v1, "rate":I
    const/4 v2, 0x0

    .line 99
    .local v2, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 103
    move v0, v2

    :goto_1
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mStarBtns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 106
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mTopBarChangeListener:Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mTopBarChangeListener:Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mDailyReviewUUID:Ljava/lang/String;

    iget v5, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mRate:I

    .line 108
    iget-object v6, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mNotes:Ljava/lang/String;

    .line 107
    invoke-interface {v3, v4, v5, v6}, Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;->updateDailyReview(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 100
    :cond_1
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mStarBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mStarBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    :try_start_0
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    move-object v2, v0

    iput-object v2, p0, Lim/doit/pro/activity/DailyReviewDoneFragment;->mTopBarChangeListener:Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v4, " must implement TopBarChangeListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v1, 0x7f030066

    .line 65
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "layoutView":Landroid/view/View;
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->initData()V

    .line 67
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->initView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->initViewContent()V

    .line 69
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->initListener()V

    .line 70
    return-object v0
.end method
