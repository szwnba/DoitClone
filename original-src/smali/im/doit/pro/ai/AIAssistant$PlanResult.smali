.class Lim/doit/pro/ai/AIAssistant$PlanResult;
.super Ljava/lang/Object;
.source "AIAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ai/AIAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlanResult"
.end annotation


# instance fields
.field final estimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field plan:Ljava/lang/String;

.field final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field summary:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ai/AIAssistant$1;)V
    .registers 2

    .line 254
    invoke-direct {p0}, Lim/doit/pro/ai/AIAssistant$PlanResult;-><init>()V

    return-void
.end method
