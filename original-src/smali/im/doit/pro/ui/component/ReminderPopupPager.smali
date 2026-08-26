.class public Lim/doit/pro/ui/component/ReminderPopupPager;
.super Landroid/support/v4/view/ViewPager;
.source "ReminderPopupPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;
    }
.end annotation


# static fields
.field public static STATUS_MESSAGES_REMAINING:I

.field public static STATUS_NO_MESSAGES_REMAINING:I

.field public static STATUS_REMOVING_MESSAGE:I


# instance fields
.field private currentPage:I

.field private mContext:Landroid/content/Context;

.field private mPagerIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

.field private messageCountChanged:Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile removingMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_MESSAGES_REMAINING:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_NO_MESSAGES_REMAINING:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_REMOVING_MESSAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->removingMessage:Z

    .line 30
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/ReminderPopupPager;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->removingMessage:Z

    .line 35
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/ReminderPopupPager;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private UpdateMessageCount()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->mPagerIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->mPagerIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 163
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messageCountChanged:Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messageCountChanged:Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;

    iget v1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    invoke-virtual {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->getPageCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;->onChange(II)V

    .line 166
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/ReminderPopupPager;Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->removingMessage:Z

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/ReminderPopupPager;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/ReminderPopupPager;I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/ReminderPopupPager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/ReminderPopupPager;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->UpdateMessageCount()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 39
    iput-object p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    .line 42
    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/ReminderPopupPager;->setOffscreenPageLimit(I)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->setPageMargin(I)V

    .line 44
    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/ReminderPopupPager;->setLongClickable(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized addMessage(Lim/doit/pro/db/metadata/ReminderMessage;)V
    .locals 1
    .param p1, "newMessage"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->UpdateMessageCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMessages(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "newMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/db/metadata/ReminderMessage;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 71
    invoke-direct {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->UpdateMessageCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveMessage()Lim/doit/pro/db/metadata/ReminderMessage;
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    iget v1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/db/metadata/ReminderMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveMessageNum()I
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessage(I)Lim/doit/pro/db/metadata/ReminderMessage;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/db/metadata/ReminderMessage;

    return-object v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public removeActiveMessage()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->removeMessage(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized removeMessage(I)I
    .locals 4
    .param p1, "numMessage"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->removingMessage:Z

    if-eqz v2, :cond_0

    .line 85
    sget v2, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_REMOVING_MESSAGE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return v2

    .line 88
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->getPageCount()I

    move-result v1

    .line 90
    .local v1, "totalMessages":I
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 91
    sget v2, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_NO_MESSAGES_REMAINING:I

    goto :goto_0

    .line 94
    :cond_1
    if-ge p1, v1, :cond_2

    if-gez p1, :cond_3

    .line 95
    :cond_2
    sget v2, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_NO_MESSAGES_REMAINING:I

    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->mContext:Landroid/content/Context;

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 99
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lim/doit/pro/ui/component/ReminderPopupPager$1;

    invoke-direct {v2, p0, p1, v1}, Lim/doit/pro/ui/component/ReminderPopupPager$1;-><init>(Lim/doit/pro/ui/component/ReminderPopupPager;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    sget v2, Lim/doit/pro/ui/component/ReminderPopupPager;->STATUS_MESSAGES_REMAINING:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "mAnimation":Landroid/view/animation/Animation;
    .end local v1    # "totalMessages":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setCurrentItem(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 183
    iput p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    .line 184
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 197
    iput p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    .line 198
    return-void
.end method

.method public setIndicator(Lim/doit/pro/ui/component/CirclePageIndicator;)V
    .locals 0
    .param p1, "pagerIndicator"    # Lim/doit/pro/ui/component/CirclePageIndicator;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iput-object p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->mPagerIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    .line 194
    :cond_0
    return-void
.end method

.method public setOnMessageCountChanged(Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;)V
    .locals 0
    .param p1, "m"    # Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;

    .prologue
    .line 152
    iput-object p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messageCountChanged:Lim/doit/pro/ui/component/ReminderPopupPager$MessageCountChanged;

    .line 153
    return-void
.end method

.method public shouldNotify()Lim/doit/pro/db/metadata/ReminderMessage;
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 214
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 208
    :cond_1
    iget-object v2, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 209
    .local v1, "message":Lim/doit/pro/db/metadata/ReminderMessage;
    invoke-virtual {v1}, Lim/doit/pro/db/metadata/ReminderMessage;->shouldNotify()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public showLast()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->setCurrentItem(I)V

    .line 188
    return-void
.end method

.method public showNext()V
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    invoke-virtual {p0}, Lim/doit/pro/ui/component/ReminderPopupPager;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 170
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->setCurrentItem(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    if-lez v0, :cond_0

    .line 176
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->setCurrentItem(I)V

    .line 178
    :cond_0
    return-void
.end method
