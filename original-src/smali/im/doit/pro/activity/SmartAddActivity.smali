.class public Lim/doit/pro/activity/SmartAddActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "SmartAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;
    }
.end annotation


# instance fields
.field private final FLAG_CONTEXT:Ljava/lang/String;

.field private final FLAG_PRIORITY:Ljava/lang/String;

.field private final FLAG_PROJECT:Ljava/lang/String;

.field private final FLAG_TAG:Ljava/lang/String;

.field private final FLAG_TIME:Ljava/lang/String;

.field private contextNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/model/TaskContext;",
            ">;"
        }
    .end annotation
.end field

.field private etInput:Lim/doit/pro/ui/component/NoEnterEditText;

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listDateStringArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation
.end field

.field private msgView:Landroid/widget/TextView;

.field private optionAdapter:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

.field private optionsListView:Landroid/widget/ListView;

.field private priorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private projectNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedContextNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedProjectNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTagNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startAtStr:Ljava/lang/String;

.field private tagNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->contextNameList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->projectNameList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->priorityList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->mProjects:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->contexts:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTimeList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContextNameList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedProjectNameList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedPriorityList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->listData:Ljava/util/List;

    .line 77
    const-string v0, "^"

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->FLAG_TIME:Ljava/lang/String;

    .line 78
    const-string v0, "@"

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->FLAG_CONTEXT:Ljava/lang/String;

    .line 79
    const-string v0, "#"

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->FLAG_PROJECT:Ljava/lang/String;

    .line 80
    const-string v0, "!"

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->FLAG_PRIORITY:Ljava/lang/String;

    .line 81
    const-string v0, "&"

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->FLAG_TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->listData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SmartAddActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->optionsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContextNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->contextNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lim/doit/pro/activity/SmartAddActivity;I)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SmartAddActivity;->showEmptyMsg(I)V

    return-void
.end method

.method static synthetic access$14(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedProjectNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->projectNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedPriorityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->priorityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SmartAddActivity;Z)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SmartAddActivity;->showOrHiddenSmartAddBtn(Z)V

    return-void
.end method

.method static synthetic access$20(Lim/doit/pro/activity/SmartAddActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$21(Lim/doit/pro/activity/SmartAddActivity;)V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->resetEmptyMsg()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SmartAddActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SmartAddActivity;->addTags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->optionAdapter:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/SmartAddActivity;->setDisplayList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0, p1, p2, p3, p4}, Lim/doit/pro/activity/SmartAddActivity;->setEditText(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addSpaceOnStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "inputAll"    # Ljava/lang/String;

    .prologue
    .line 929
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 935
    :cond_1
    return-object p1
.end method

.method private addTags(Ljava/lang/String;)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string v6, " &"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "arrayInput":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 845
    .local v1, "count":I
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 846
    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 856
    const/4 v6, 0x5

    if-le v1, v6, :cond_0

    .line 857
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v6, v1, -0x5

    if-lt v2, v6, :cond_4

    .line 862
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v6, p1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 846
    :cond_1
    aget-object v3, v0, v6

    .line 847
    .local v3, "input":Ljava/lang/String;
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 846
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 850
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 851
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 852
    iget-object v8, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 858
    .end local v3    # "input":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 859
    .local v5, "tag":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 860
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setSmartAddLastInput(Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/activity/SmartAddActivity;->finish()V

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setSmartAddLastInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLastSmartStr(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p2, "inputAll"    # Ljava/lang/String;
    .param p3, "ch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 605
    const-string v4, "&"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/SmartAddActivity;->getLastTagSmartStr(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 641
    :cond_0
    :goto_0
    return-object v2

    .line 608
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "key":Ljava/lang/String;
    const/4 v1, -0x1

    .line 610
    .local v1, "lastSmartIndex":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 611
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 612
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v1, v4, -0x1

    .line 614
    :cond_2
    const/4 v3, -0x1

    .line 615
    .local v3, "lastSpaceIndex":I
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 616
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 618
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v1, v6, :cond_4

    .line 619
    if-ge v3, v1, :cond_5

    .line 620
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 623
    :cond_5
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "lastSmartStr":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 626
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 627
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 629
    const/4 v2, 0x0

    .line 630
    goto :goto_0

    .line 633
    :cond_6
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 632
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 636
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 638
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-direct {p0, p1, v4, p3}, Lim/doit/pro/activity/SmartAddActivity;->getLastSmartStr(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getLastTagSmartStr(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p2, "inputAll"    # Ljava/lang/String;
    .param p3, "ch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 579
    .local v1, "lastSmartIndex":I
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 580
    .local v3, "lastSpaceIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eq v1, v6, :cond_0

    .line 581
    if-ge v3, v1, :cond_2

    .line 582
    :cond_0
    const/4 v2, 0x0

    .line 599
    :cond_1
    :goto_0
    return-object v2

    .line 585
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    .line 584
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 585
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "lastSmartStr":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 589
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 591
    const/4 v2, 0x0

    .line 592
    goto :goto_0

    .line 594
    :cond_3
    const/4 v4, 0x0

    .line 595
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 594
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getTaskTitle(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p2, "inputAll"    # Ljava/lang/String;
    .param p3, "ch"    # Ljava/lang/String;
    .param p4, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 541
    move-object v1, p2

    .line 542
    .local v1, "input":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->startAtStr:Ljava/lang/String;

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->startAtStr:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Lim/doit/pro/activity/SmartAddActivity;->setSelectedList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 550
    return-object p2

    .line 548
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 547
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initContextList()V
    .locals 4

    .prologue
    .line 255
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/TaskContextDao;->findAllNotDeleted()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->contexts:Ljava/util/List;

    .line 256
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->contexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    return-void

    .line 256
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    .line 257
    .local v0, "context":Lim/doit/pro/model/TaskContext;
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->contextNameList:Ljava/util/List;

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initTimeList()V

    .line 233
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initContextList()V

    .line 234
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initProjectList()V

    .line 235
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initPriorityList()V

    .line 236
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initTagList()V

    .line 237
    return-void
.end method

.method private initPriorityList()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->priorityList:Ljava/util/List;

    const v1, 0x7f0c00fb

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->priorityList:Ljava/util/List;

    const v1, 0x7f0c00fc

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->priorityList:Ljava/util/List;

    const v1, 0x7f0c00fd

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method private initProjectList()V
    .locals 5

    .prologue
    .line 265
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/ProjectDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    sget-object v3, Lim/doit/pro/model/enums/GroupByType;->status:Lim/doit/pro/model/enums/GroupByType;

    .line 264
    invoke-static {v2, v3}, Lim/doit/pro/utils/QueryUtils;->sortDatasWithoutGrouper(Ljava/util/ArrayList;Lim/doit/pro/model/enums/GroupByType;)Ljava/util/ArrayList;

    move-result-object v1

    .line 267
    .local v1, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->mProjects:Ljava/util/List;

    .line 268
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->mProjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->mProjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    return-void

    .line 269
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 270
    .local v0, "project":Lim/doit/pro/model/Project;
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->projectNameList:Ljava/util/List;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initTagList()V
    .locals 5

    .prologue
    .line 281
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 282
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/TagDao;->findAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 283
    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/model/Tag;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    return-void

    .line 283
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Tag;

    .line 284
    .local v0, "item":Lim/doit/pro/model/Tag;
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    invoke-virtual {v0}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initTimeList()V
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    const v2, 0x7f0c00e1

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    const v2, 0x7f0c00e2

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 247
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    rem-int/lit8 v3, v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x4

    rem-int/lit8 v3, v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x5

    rem-int/lit8 v3, v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    .line 242
    sget-object v2, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    aget v2, v2, v0

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 289
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 290
    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->optionsListView:Landroid/widget/ListView;

    .line 291
    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    .line 292
    return-void
.end method

.method private parseTaskStartAtAndEndAt(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 7
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "inputAll"    # Ljava/lang/String;

    .prologue
    .line 693
    const/4 v3, 0x0

    .line 694
    .local v3, "startAt":Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    invoke-static {}, Lim/doit/pro/utils/SmartAddUtils;->getInstance()Lim/doit/pro/utils/SmartAddUtils;

    move-result-object v4

    invoke-virtual {v4, p2}, Lim/doit/pro/utils/SmartAddUtils;->parseEndAt(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-result-object v1

    .line 695
    .local v1, "endAt":Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    const/4 v0, 0x1

    .line 697
    .local v0, "allDay":Z
    if-eqz v1, :cond_0

    .line 698
    iget-boolean v0, v1, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    .line 699
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 700
    .local v2, "endAtDate":Ljava/util/Calendar;
    iget-object v4, v1, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 701
    iget-object v4, v1, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 703
    .end local v2    # "endAtDate":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_2

    .line 704
    invoke-static {}, Lim/doit/pro/utils/SmartAddUtils;->getInstance()Lim/doit/pro/utils/SmartAddUtils;

    move-result-object v4

    invoke-virtual {v4, p2}, Lim/doit/pro/utils/SmartAddUtils;->parseStartAt(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-result-object v3

    .line 705
    if-eqz v3, :cond_2

    .line 706
    iget-object v4, v3, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {p1, v4}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 707
    sget-object v4, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v4}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 708
    if-eqz v0, :cond_1

    .line 709
    iget-boolean v0, v3, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    .line 711
    :cond_1
    iget-object v4, v3, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    iput-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->startAtStr:Ljava/lang/String;

    .line 715
    :cond_2
    if-eqz v1, :cond_4

    .line 716
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 717
    iget-object v4, v1, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v6

    .line 716
    invoke-static {v4, v5, v6}, Lim/doit/pro/utils/DateUtils;->afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    .line 717
    if-eqz v4, :cond_4

    .line 718
    :cond_3
    iget-object v4, v1, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {p1, v4}, Lim/doit/pro/model/Task;->updateEndAt(Ljava/util/Calendar;)V

    .line 720
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 721
    :cond_5
    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 723
    :cond_6
    return-object p1
.end method

.method private resetEmptyMsg()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    .line 874
    const v1, 0x7f0c0153

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 873
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    return-void
.end method

.method private setDisplayList(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "dataResource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->listData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 920
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 925
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->optionAdapter:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->notifyDataSetChanged()V

    .line 926
    return-void

    .line 920
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 921
    .local v0, "item":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 922
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->listData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setEditText(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p2, "inputAll"    # Ljava/lang/String;
    .param p3, "ch"    # Ljava/lang/String;
    .param p4, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lim/doit/pro/activity/SmartAddActivity;->addSpaceOnStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 880
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/SmartAddActivity;->setSelectedList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 882
    .local v3, "size":I
    if-le v3, p4, :cond_1

    .line 883
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 899
    sub-int v0, v3, p4

    .local v0, "i":I
    :goto_1
    if-le v0, p4, :cond_6

    .line 907
    const-string v6, " "

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 911
    :cond_0
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v6, p2}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v6}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v7}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 913
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    .line 912
    invoke-static {v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 915
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 883
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 884
    .local v2, "selectedContent":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 885
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 887
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 888
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 887
    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 889
    .local v5, "subInputArr":[Ljava/lang/String;
    const-string v4, ""

    .line 890
    .local v4, "subInput":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v5

    if-lt v0, v7, :cond_4

    .line 896
    move-object p2, v4

    goto/16 :goto_0

    .line 891
    :cond_4
    if-lez v0, :cond_5

    .line 892
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 894
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 900
    .end local v2    # "selectedContent":Ljava/lang/String;
    .end local v4    # "subInput":Ljava/lang/String;
    .end local v5    # "subInputArr":[Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 901
    .local v1, "item":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 902
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 904
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private setSelectedList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "inputAll"    # Ljava/lang/String;
    .param p3, "ch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "str":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 573
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 558
    .restart local v0    # "i":I
    :cond_1
    aget-object v3, v2, v0

    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-static {p3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 560
    if-nez v3, :cond_3

    .line 557
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-direct {p0, p1, v3, p3}, Lim/doit/pro/activity/SmartAddActivity;->getLastSmartStr(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "smartStr":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 566
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 568
    const-string v3, "&"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    :cond_4
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setTaskContext(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 4
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "inputAll"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-object p1

    .line 730
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    .line 731
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    .local v0, "contextName":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->contexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/TaskContext;

    .line 733
    .local v1, "item":Lim/doit/pro/model/TaskContext;
    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTaskPriority(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "inputAll"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-object p1

    .line 760
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    .line 761
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    .local v0, "content":Ljava/lang/String;
    const v1, 0x7f0c00fb

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    goto :goto_0

    .line 764
    :cond_2
    const v1, 0x7f0c00fc

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    goto :goto_0

    .line 766
    :cond_3
    const v1, 0x7f0c00fd

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    goto :goto_0
.end method

.method private setTaskProject(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 4
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "inputAll"    # Ljava/lang/String;

    .prologue
    .line 742
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-object p1

    .line 745
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    .line 746
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 747
    .local v1, "projectName":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->mProjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 748
    .local v0, "item":Lim/doit/pro/model/Project;
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 749
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTaskStartAt(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 6
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "inputAll"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    .line 645
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 648
    .local v1, "i":I
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    .line 649
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lim/doit/pro/activity/SmartAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 652
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 689
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    :goto_0
    return-object p1

    .line 653
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/SmartAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 654
    const v4, 0x7f0c00e2

    .line 653
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 654
    if-eqz v3, :cond_2

    .line 655
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 656
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    rem-int/lit8 v4, v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 658
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 659
    .local v2, "startAt":Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 660
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 661
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 662
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto :goto_0

    .line 663
    .end local v2    # "startAt":Ljava/util/Calendar;
    :cond_3
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v4, v1, 0x2

    rem-int/lit8 v4, v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 665
    .restart local v2    # "startAt":Ljava/util/Calendar;
    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 666
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 667
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 668
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto :goto_0

    .line 669
    .end local v2    # "startAt":Ljava/util/Calendar;
    :cond_4
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v4, v1, 0x3

    rem-int/lit8 v4, v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 670
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 671
    .restart local v2    # "startAt":Ljava/util/Calendar;
    const/4 v3, 0x4

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 672
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 673
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 674
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto/16 :goto_0

    .line 675
    .end local v2    # "startAt":Ljava/util/Calendar;
    :cond_5
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v4, v1, 0x4

    rem-int/lit8 v4, v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 676
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 677
    .restart local v2    # "startAt":Ljava/util/Calendar;
    invoke-virtual {v2, v5, v5}, Ljava/util/Calendar;->add(II)V

    .line 678
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 679
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 680
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto/16 :goto_0

    .line 681
    .end local v2    # "startAt":Ljava/util/Calendar;
    :cond_6
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity;->listDateStringArray:Ljava/util/List;

    add-int/lit8 v4, v1, 0x5

    rem-int/lit8 v4, v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 683
    .restart local v2    # "startAt":Ljava/util/Calendar;
    const/4 v3, 0x6

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 684
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 685
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 686
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto/16 :goto_0
.end method

.method private setTaskTags(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 7
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "inputAll"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 773
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 793
    :goto_0
    return-object p1

    .line 776
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v3, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    .line 778
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x5

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 777
    if-lt v0, v5, :cond_2

    .line 792
    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setTags(Ljava/util/ArrayList;)V

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    move v0, v4

    .line 778
    goto :goto_1

    .line 779
    .restart local v0    # "i":I
    :cond_2
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContentList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 780
    .local v2, "tagName":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v5, v2}, Lim/doit/pro/db/persist/TagDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Tag;

    move-result-object v5

    if-nez v5, :cond_4

    .line 781
    new-instance v1, Lim/doit/pro/model/Tag;

    invoke-direct {v1}, Lim/doit/pro/model/Tag;-><init>()V

    .line 782
    .local v1, "tag":Lim/doit/pro/model/Tag;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lim/doit/pro/model/Tag;->setUuid(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 784
    const v6, 0x7f0a0012

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 785
    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 787
    :cond_3
    invoke-virtual {v1, v2}, Lim/doit/pro/model/Tag;->setName(Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/TagDao;->createAndSaveLog(Lim/doit/pro/model/Tag;)V

    .line 790
    .end local v1    # "tag":Lim/doit/pro/model/Tag;
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;-><init>(Lim/doit/pro/activity/SmartAddActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->optionAdapter:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    .line 296
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->optionsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->optionAdapter:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/SmartAddActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SmartAddActivity$1;-><init>(Lim/doit/pro/activity/SmartAddActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 305
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/SmartAddActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SmartAddActivity$2;-><init>(Lim/doit/pro/activity/SmartAddActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 415
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 416
    new-instance v1, Lim/doit/pro/activity/SmartAddActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SmartAddActivity$3;-><init>(Lim/doit/pro/activity/SmartAddActivity;)V

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getSmartAddLastInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getSmartAddLastInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 430
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 429
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 432
    :cond_0
    return-void
.end method

.method private showEmptyMsg(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity;->optionsListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 870
    return-void
.end method

.method private showOrHiddenSmartAddBtn(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 530
    const v1, 0x7f0b00cd

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 531
    .local v0, "smartAddBtn":Landroid/widget/LinearLayout;
    if-eqz p1, :cond_0

    .line 532
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSuccessMsg(Lim/doit/pro/model/Task;)V
    .locals 6
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, "project":Lim/doit/pro/model/Project;
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 800
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    .end local v0    # "project":Lim/doit/pro/model/Project;
    check-cast v0, Lim/doit/pro/model/Project;

    .line 802
    .restart local v0    # "project":Lim/doit/pro/model/Project;
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 803
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    .line 804
    const v2, 0x7f0c0150

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 805
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 803
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    :cond_1
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->optionsListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    const v2, 0x106000b

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 826
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lim/doit/pro/activity/SmartAddActivity$4;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/SmartAddActivity$4;-><init>(Lim/doit/pro/activity/SmartAddActivity;)V

    .line 838
    const-wide/16 v4, 0x7d0

    .line 826
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 839
    return-void

    .line 806
    :cond_2
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    const v2, 0x7f0c014b

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 808
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 809
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    const v2, 0x7f0c014c

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 810
    :cond_4
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 811
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    const v2, 0x7f0c014d

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 812
    :cond_5
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isTomorrow()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    :cond_6
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 814
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->isTomorrow(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 815
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    .line 816
    const v2, 0x7f0c014e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 818
    :cond_7
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->msgView:Landroid/widget/TextView;

    .line 819
    const v2, 0x7f0c014f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected isShowLockView()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onContextClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->contextNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const v1, 0x7f0c0149

    invoke-direct {p0, v1}, Lim/doit/pro/activity/SmartAddActivity;->showEmptyMsg(I)V

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "input":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SmartAddActivity;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initData()V

    .line 90
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->initView()V

    .line 91
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->setViewContent()V

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lim/doit/pro/activity/SmartAddActivity;->finishActivity()V

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPriorityClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "input":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 216
    return-void
.end method

.method public onProjectClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->projectNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const v1, 0x7f0c0148

    invoke-direct {p0, v1}, Lim/doit/pro/activity/SmartAddActivity;->showEmptyMsg(I)V

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "input":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lim/doit/pro/activity/SmartAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 100
    return-void
.end method

.method public onSaveClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 125
    invoke-static {v7}, Lim/doit/pro/activity/DoitApp;->setSmartAddLastInput(Ljava/lang/String;)V

    .line 126
    new-instance v2, Lim/doit/pro/model/Task;

    invoke-direct {v2}, Lim/doit/pro/model/Task;-><init>()V

    .line 127
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2, v6}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 128
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 129
    sget-object v4, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2, v4}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 130
    const v4, 0x7f0b003a

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 131
    .local v3, "text":Landroid/widget/EditText;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "inputAll":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/SmartAddActivity;->addSpaceOnStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iput-object v7, p0, Lim/doit/pro/activity/SmartAddActivity;->startAtStr:Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->timeList:Ljava/util/List;

    const-string v5, "^"

    invoke-direct {p0, v4, v0, v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->getTaskTitle(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0, v2, v0}, Lim/doit/pro/activity/SmartAddActivity;->setTaskStartAt(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 137
    invoke-direct {p0, v2, v0}, Lim/doit/pro/activity/SmartAddActivity;->parseTaskStartAtAndEndAt(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 138
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->contextNameList:Ljava/util/List;

    const-string v5, "@"

    invoke-direct {p0, v4, v0, v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->getTaskTitle(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-direct {p0, v2, v0}, Lim/doit/pro/activity/SmartAddActivity;->setTaskContext(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 141
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->projectNameList:Ljava/util/List;

    const-string v5, "#"

    invoke-direct {p0, v4, v0, v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->getTaskTitle(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-direct {p0, v2, v0}, Lim/doit/pro/activity/SmartAddActivity;->setTaskProject(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 143
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->priorityList:Ljava/util/List;

    const-string v5, "!"

    invoke-direct {p0, v4, v0, v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->getTaskTitle(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v2, v0}, Lim/doit/pro/activity/SmartAddActivity;->setTaskPriority(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 145
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    const-string v5, "&"

    const/4 v6, 0x5

    invoke-direct {p0, v4, v0, v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->getTaskTitle(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, v2, v0}, Lim/doit/pro/activity/SmartAddActivity;->setTaskTags(Lim/doit/pro/model/Task;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "sbTitle":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const v4, 0x7f0c0089

    invoke-static {v4}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 172
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v1, v4, v5}, Lim/doit/pro/utils/StringUtils;->isInvalidLength(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    const v4, 0x7f0c0151

    invoke-static {v4}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/Task;->setName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    sget-object v4, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getAttribute()Lim/doit/pro/model/enums/Attribute;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    sget-object v4, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2, v4}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 163
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 164
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 166
    invoke-direct {p0, v2}, Lim/doit/pro/activity/SmartAddActivity;->showSuccessMsg(Lim/doit/pro/model/Task;)V

    .line 167
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 168
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedContextNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 169
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedProjectNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 170
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedPriorityList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 171
    iget-object v4, p0, Lim/doit/pro/activity/SmartAddActivity;->selectedTagNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public onTagClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->tagNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const v1, 0x7f0c014a

    invoke-direct {p0, v1}, Lim/doit/pro/activity/SmartAddActivity;->showEmptyMsg(I)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "input":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public onTimeClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "input":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity;->etInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 181
    return-void
.end method
